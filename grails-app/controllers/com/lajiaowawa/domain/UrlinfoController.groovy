package com.lajiaowawa.domain

import org.springframework.dao.DataIntegrityViolationException

class UrlinfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [urlInfoInstanceList: Urlinfo.list(params), urlInfoInstanceTotal: Urlinfo.count()]
    }

    def create() {
        [urlInfoInstance: new Urlinfo(params)]
    }

    def save() {
        def urlInfoInstance = new Urlinfo(params)
        if (!urlInfoInstance.save(flush: true)) {
            render(view: "create", model: [urlInfoInstance: urlInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), urlInfoInstance.id])
        redirect(action: "show", id: urlInfoInstance.id)
    }

    def show(Long id) {
        def urlInfoInstance = Urlinfo.get(id)
        if (!urlInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "list")
            return
        }

        [urlInfoInstance: urlInfoInstance]
    }

    def edit(Long id) {
        def urlInfoInstance = Urlinfo.get(id)
        if (!urlInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "list")
            return
        }

        [urlInfoInstance: urlInfoInstance]
    }

    def update(Long id, Long version) {
        def urlInfoInstance = Urlinfo.get(id)
        if (!urlInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (urlInfoInstance.version > version) {
                urlInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'urlInfo.label', default: 'UrlInfo')] as Object[],
                          "Another user has updated this UrlInfo while you were editing")
                render(view: "edit", model: [urlInfoInstance: urlInfoInstance])
                return
            }
        }

        urlInfoInstance.properties = params

        if (!urlInfoInstance.save(flush: true)) {
            render(view: "edit", model: [urlInfoInstance: urlInfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), urlInfoInstance.id])
        redirect(action: "show", id: urlInfoInstance.id)
    }

    def delete(Long id) {
        def urlInfoInstance = Urlinfo.get(id)
        if (!urlInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            urlInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'urlInfo.label', default: 'UrlInfo'), id])
            redirect(action: "show", id: id)
        }
    }
}
