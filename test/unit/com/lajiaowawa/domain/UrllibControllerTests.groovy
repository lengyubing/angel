package com.lajiaowawa.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(UrllibController)
@Mock(Urllib)
class UrllibControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/urlLib/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.urlLibInstanceList.size() == 0
        assert model.urlLibInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.urlLibInstance != null
    }

    void testSave() {
        controller.save()

        assert model.urlLibInstance != null
        assert view == '/urlLib/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/urlLib/show/1'
        assert controller.flash.message != null
        assert Urllib.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/urlLib/list'

        populateValidParams(params)
        def urlLib = new Urllib(params)

        assert urlLib.save() != null

        params.id = urlLib.id

        def model = controller.show()

        assert model.urlLibInstance == urlLib
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/urlLib/list'

        populateValidParams(params)
        def urlLib = new Urllib(params)

        assert urlLib.save() != null

        params.id = urlLib.id

        def model = controller.edit()

        assert model.urlLibInstance == urlLib
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/urlLib/list'

        response.reset()

        populateValidParams(params)
        def urlLib = new Urllib(params)

        assert urlLib.save() != null

        // test invalid parameters in update
        params.id = urlLib.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/urlLib/edit"
        assert model.urlLibInstance != null

        urlLib.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/urlLib/show/$urlLib.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        urlLib.clearErrors()

        populateValidParams(params)
        params.id = urlLib.id
        params.version = -1
        controller.update()

        assert view == "/urlLib/edit"
        assert model.urlLibInstance != null
        assert model.urlLibInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/urlLib/list'

        response.reset()

        populateValidParams(params)
        def urlLib = new Urllib(params)

        assert urlLib.save() != null
        assert Urllib.count() == 1

        params.id = urlLib.id

        controller.delete()

        assert Urllib.count() == 0
        assert Urllib.get(urlLib.id) == null
        assert response.redirectedUrl == '/urlLib/list'
    }
}
