package android.support.v4.widget;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class SearchViewCompat {
    private static final android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl IMPL;

    interface SearchViewCompatImpl {
        java.lang.Object newOnQueryTextListener(android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat onQueryTextListenerCompat);

        android.view.View newSearchView(android.content.Context context);

        void setOnQueryTextListener(java.lang.Object obj, java.lang.Object obj2);
    }

    static class SearchViewCompatStubImpl implements android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl {
        SearchViewCompatStubImpl() {
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public android.view.View newSearchView(android.content.Context context) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public java.lang.Object newOnQueryTextListener(android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat listener) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public void setOnQueryTextListener(java.lang.Object searchView, java.lang.Object listener) {
        }
    }

    static class SearchViewCompatHoneycombImpl extends android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl {
        SearchViewCompatHoneycombImpl() {
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl, android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public android.view.View newSearchView(android.content.Context context) {
            return android.support.v4.widget.SearchViewCompatHoneycomb.newSearchView(context);
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl, android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public java.lang.Object newOnQueryTextListener(final android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat listener) {
            return android.support.v4.widget.SearchViewCompatHoneycomb.newOnQueryTextListener(new android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge() { // from class: android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl.1
                @Override // android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge
                public boolean onQueryTextSubmit(java.lang.String query) {
                    return listener.onQueryTextSubmit(query);
                }

                @Override // android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge
                public boolean onQueryTextChange(java.lang.String newText) {
                    return listener.onQueryTextChange(newText);
                }
            });
        }

        @Override // android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl, android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl
        public void setOnQueryTextListener(java.lang.Object searchView, java.lang.Object listener) {
            android.support.v4.widget.SearchViewCompatHoneycomb.setOnQueryTextListener(searchView, listener);
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 11) {
            IMPL = new android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl();
        } else {
            IMPL = new android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl();
        }
    }

    private SearchViewCompat(android.content.Context context) {
    }

    public static android.view.View newSearchView(android.content.Context context) {
        return IMPL.newSearchView(context);
    }

    public static void setOnQueryTextListener(android.view.View searchView, android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat listener) {
        IMPL.setOnQueryTextListener(searchView, listener.mListener);
    }

    public static abstract class OnQueryTextListenerCompat {
        final java.lang.Object mListener = android.support.v4.widget.SearchViewCompat.IMPL.newOnQueryTextListener(this);

        public boolean onQueryTextSubmit(java.lang.String query) {
            return false;
        }

        public boolean onQueryTextChange(java.lang.String newText) {
            return false;
        }
    }
}
