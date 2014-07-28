package com.lajiaowawa.domain

import org.springframework.dao.DataIntegrityViolationException

class UrllibController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [urlLibInstanceList: Urllib.list(params), urlLibInstanceTotal: Urllib.count()]
    }

    def create() {
        [urlLibInstance: new Urllib(params)]
    }

    def save() {
        def urlLibInstance = new Urllib(params)
        if (!urlLibInstance.save(flush: true)) {
            render(view: "create", model: [urlLibInstance: urlLibInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), urlLibInstance.id])
        redirect(action: "show", id: urlLibInstance.id)
    }

    def show(Long id) {
        def urlLibInstance = Urllib.get(id)
        if (!urlLibInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "list")
            return
        }

        [urlLibInstance: urlLibInstance]
    }

    def edit(Long id) {
        def urlLibInstance = Urllib.get(id)
        if (!urlLibInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "list")
            return
        }

        [urlLibInstance: urlLibInstance]
    }

    def update(Long id, Long version) {
        def urlLibInstance = Urllib.get(id)
        if (!urlLibInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (urlLibInstance.version > version) {
                urlLibInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'urlLib.label', default: 'UrlLib')] as Object[],
                          "Another user has updated this UrlLib while you were editing")
                render(view: "edit", model: [urlLibInstance: urlLibInstance])
                return
            }
        }

        urlLibInstance.properties = params

        if (!urlLibInstance.save(flush: true)) {
            render(view: "edit", model: [urlLibInstance: urlLibInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), urlLibInstance.id])
        redirect(action: "show", id: urlLibInstance.id)
    }

    def delete(Long id) {
        def urlLibInstance = Urllib.get(id)
        if (!urlLibInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "list")
            return
        }

        try {
            urlLibInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'urlLib.label', default: 'UrlLib'), id])
            redirect(action: "show", id: id)
        }
    }
}
