package android.support.v4.widget;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class SearchViewCompatHoneycomb {

    interface OnQueryTextListenerCompatBridge {
        boolean onQueryTextChange(java.lang.String str);

        boolean onQueryTextSubmit(java.lang.String str);
    }

    SearchViewCompatHoneycomb() {
    }

    public static android.view.View newSearchView(android.content.Context context) {
        return new android.widget.SearchView(context);
    }

    public static java.lang.Object newOnQueryTextListener(final android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge listener) {
        return new android.widget.SearchView.OnQueryTextListener() { // from class: android.support.v4.widget.SearchViewCompatHoneycomb.1
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(java.lang.String query) {
                return android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge.this.onQueryTextSubmit(query);
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(java.lang.String newText) {
                return android.support.v4.widget.SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge.this.onQueryTextChange(newText);
            }
        };
    }

    public static void setOnQueryTextListener(java.lang.Object searchView, java.lang.Object listener) {
        ((android.widget.SearchView) searchView).setOnQueryTextListener((android.widget.SearchView.OnQueryTextListener) listener);
    }
}
