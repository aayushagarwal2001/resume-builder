!function(e) {
    var t = {};
    function n(r) {
        if (t[r])
            return t[r].exports;
        var o = t[r] = {
            i: r,
            l: !1,
            exports: {}
        };
        return e[r].call(o.exports, o, o.exports, n),
        o.l = !0,
        o.exports
    }
    n.m = e,
    n.c = t,
    n.d = function(e, t, r) {
        n.o(e, t) || Object.defineProperty(e, t, {
            enumerable: !0,
            get: r
        })
    }
    ,
    n.r = function(e) {
        "undefined" !== typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {
            value: "Module"
        }),
        Object.defineProperty(e, "__esModule", {
            value: !0
        })
    }
    ,
    n.t = function(e, t) {
        if (1 & t && (e = n(e)),
        8 & t)
            return e;
        if (4 & t && "object" === typeof e && e && e.__esModule)
            return e;
        var r = Object.create(null);
        if (n.r(r),
        Object.defineProperty(r, "default", {
            enumerable: !0,
            value: e
        }),
        2 & t && "string" != typeof e)
            for (var o in e)
                n.d(r, o, function(t) {
                    return e[t]
                }
                .bind(null, o));
        return r
    }
    ,
    n.n = function(e) {
        var t = e && e.__esModule ? function() {
            return e.default
        }
        : function() {
            return e
        }
        ;
        return n.d(t, "a", t),
        t
    }
    ,
    n.o = function(e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }
    ,
    n.p = "/packs/",
    n(n.s = 8)
}({
    8: function(e, t) {
        window.addEventListener("load", (function() {
            n(),
            r()
        }
        ));
        var n = function() {
            var e = document.getElementById("share-btn");
            null === e || void 0 === e || e.addEventListener("click", (function(e) {
                e.preventDefault(),
                navigator.clipboard.writeText(e.target.href),
                e.target.innerText = "Copied!"
            }
            ))
        }
          , r = function() {
            var e = document.getElementById("profile_profile_image");
            null === e || void 0 === e || e.addEventListener("change", (function(e) {
                if (e.target.files && e.target.files[0]) {
                    var t = new FileReader;
                    t.onload = function(e) {
                        document.getElementById("image-preview").src = e.target.result
                    }
                    ,
                    t.readAsDataURL(e.target.files[0])
                }
            }
            ))
        }
    }
});

