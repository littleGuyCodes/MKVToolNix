javascript: (function() {
    var p, g = 1, s = "", s2 = "", t = "";
    while (g) {
        p = prompt("Base64Decode: " + t, s);
        if (typeof p === "string") {
            try {
                s = atob(p);
                t = "(success)";
            } catch (e) {
                s = p;
                t = "(failed)";
            }
            s2 = s.replace("links.domain.it", "lnk.domain.eu");
            if (s2 != s) {
                s = s2;
                t = ".IT to .EU translation";
            }
        } else {
            t = "(canceled)";
            g = 0;
            break;
        }
    }
}
)();