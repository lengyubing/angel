package com.lajiaowawa.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(UrlInfoController)
@Mock(UrlInfo)
class UrlInfoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/urlInfo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.urlInfoInstanceList.size() == 0
        assert model.urlInfoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.urlInfoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.urlInfoInstance != null
        assert view == '/urlInfo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/urlInfo/show/1'
        assert controller.flash.message != null
        assert UrlInfo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/urlInfo/list'

        populateValidParams(params)
        def urlInfo = new UrlInfo(params)

        assert urlInfo.save() != null

        params.id = urlInfo.id

        def model = controller.show()

        assert model.urlInfoInstance == urlInfo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/urlInfo/list'

        populateValidParams(params)
        def urlInfo = new UrlInfo(params)

        assert urlInfo.save() != null

        params.id = urlInfo.id

        def model = controller.edit()

        assert model.urlInfoInstance == urlInfo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/urlInfo/list'

        response.reset()

        populateValidParams(params)
        def urlInfo = new UrlInfo(params)

        assert urlInfo.save() != null

        // test invalid parameters in update
        params.id = urlInfo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/urlInfo/edit"
        assert model.urlInfoInstance != null

        urlInfo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/urlInfo/show/$urlInfo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        urlInfo.clearErrors()

        populateValidParams(params)
        params.id = urlInfo.id
        params.version = -1
        controller.update()

        assert view == "/urlInfo/edit"
        assert model.urlInfoInstance != null
        assert model.urlInfoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/urlInfo/list'

        response.reset()

        populateValidParams(params)
        def urlInfo = new UrlInfo(params)

        assert urlInfo.save() != null
        assert UrlInfo.count() == 1

        params.id = urlInfo.id

        controller.delete()

        assert UrlInfo.count() == 0
        assert UrlInfo.get(urlInfo.id) == null
        assert response.redirectedUrl == '/urlInfo/list'
    }
}
