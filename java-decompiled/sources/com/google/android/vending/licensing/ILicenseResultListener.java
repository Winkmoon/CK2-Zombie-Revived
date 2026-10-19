package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface ILicenseResultListener extends android.os.IInterface {
    void verifyLicense(int i, java.lang.String str, java.lang.String str2) throws android.os.RemoteException;

    public static abstract class Stub extends android.os.Binder implements com.google.android.vending.licensing.ILicenseResultListener {
        private static final java.lang.String DESCRIPTOR = "com.android.vending.licensing.ILicenseResultListener";
        static final int TRANSACTION_verifyLicense = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.google.android.vending.licensing.ILicenseResultListener asInterface(android.os.IBinder obj) {
            if (obj == null) {
                return null;
            }
            android.os.IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof com.google.android.vending.licensing.ILicenseResultListener)) {
                return (com.google.android.vending.licensing.ILicenseResultListener) iin;
            }
            return new com.google.android.vending.licensing.ILicenseResultListener.Stub.Proxy(obj);
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, android.os.Parcel data, android.os.Parcel reply, int flags) throws android.os.RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg0 = data.readInt();
                    java.lang.String _arg1 = data.readString();
                    java.lang.String _arg2 = data.readString();
                    verifyLicense(_arg0, _arg1, _arg2);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements com.google.android.vending.licensing.ILicenseResultListener {
            private android.os.IBinder mRemote;

            Proxy(android.os.IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.google.android.vending.licensing.ILicenseResultListener.Stub.DESCRIPTOR;
            }

            @Override // com.google.android.vending.licensing.ILicenseResultListener
            public void verifyLicense(int responseCode, java.lang.String signedData, java.lang.String signature) throws android.os.RemoteException {
                android.os.Parcel _data = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.google.android.vending.licensing.ILicenseResultListener.Stub.DESCRIPTOR);
                    _data.writeInt(responseCode);
                    _data.writeString(signedData);
                    _data.writeString(signature);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
