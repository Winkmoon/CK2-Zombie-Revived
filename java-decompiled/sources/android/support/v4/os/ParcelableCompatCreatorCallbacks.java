package android.support.v4.os;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface ParcelableCompatCreatorCallbacks<T> {
    T createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader);

    T[] newArray(int i);
}
