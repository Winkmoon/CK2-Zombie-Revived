package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface ILicensingService extends android.os.IInterface {
    void checkLicense(long j, java.lang.String str, com.google.android.vending.licensing.ILicenseResultListener iLicenseResultListener) throws android.os.RemoteException;

    public static abstract class Stub extends android.os.Binder implements com.google.android.vending.licensing.ILicensingService {
        private static final java.lang.String DESCRIPTOR = "com.android.vending.licensing.ILicensingService";
        static final int TRANSACTION_checkLicense = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.google.android.vending.licensing.ILicensingService asInterface(android.os.IBinder obj) {
            if (obj == null) {
                return null;
            }
            android.os.IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof com.google.android.vending.licensing.ILicensingService)) {
                return (com.google.android.vending.licensing.ILicensingService) iin;
            }
            return new com.google.android.vending.licensing.ILicensingService.Stub.Proxy(obj);
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
                    long _arg0 = data.readLong();
                    java.lang.String _arg1 = data.readString();
                    com.google.android.vending.licensing.ILicenseResultListener _arg2 = com.google.android.vending.licensing.ILicenseResultListener.Stub.asInterface(data.readStrongBinder());
                    checkLicense(_arg0, _arg1, _arg2);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements com.google.android.vending.licensing.ILicensingService {
            private android.os.IBinder mRemote;

            Proxy(android.os.IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.google.android.vending.licensing.ILicensingService.Stub.DESCRIPTOR;
            }

            @Override // com.google.android.vending.licensing.ILicensingService
            public void checkLicense(long nonce, java.lang.String packageName, com.google.android.vending.licensing.ILicenseResultListener listener) throws android.os.RemoteException {
                android.os.Parcel _data = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.google.android.vending.licensing.ILicensingService.Stub.DESCRIPTOR);
                    _data.writeLong(nonce);
                    _data.writeString(packageName);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
