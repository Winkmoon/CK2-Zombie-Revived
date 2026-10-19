package com.android.vending.billing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface IInAppBillingService extends android.os.IInterface {
    int consumePurchase(int i, java.lang.String str, java.lang.String str2) throws android.os.RemoteException;

    android.os.Bundle getBuyIntent(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) throws android.os.RemoteException;

    android.os.Bundle getPurchases(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) throws android.os.RemoteException;

    android.os.Bundle getSkuDetails(int i, java.lang.String str, java.lang.String str2, android.os.Bundle bundle) throws android.os.RemoteException;

    int isBillingSupported(int i, java.lang.String str, java.lang.String str2) throws android.os.RemoteException;

    public static abstract class Stub extends android.os.Binder implements com.android.vending.billing.IInAppBillingService {
        private static final java.lang.String DESCRIPTOR = "com.android.vending.billing.IInAppBillingService";
        static final int TRANSACTION_consumePurchase = 5;
        static final int TRANSACTION_getBuyIntent = 3;
        static final int TRANSACTION_getPurchases = 4;
        static final int TRANSACTION_getSkuDetails = 2;
        static final int TRANSACTION_isBillingSupported = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.android.vending.billing.IInAppBillingService asInterface(android.os.IBinder obj) {
            if (obj == null) {
                return null;
            }
            android.os.IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof com.android.vending.billing.IInAppBillingService)) {
                return (com.android.vending.billing.IInAppBillingService) iin;
            }
            return new com.android.vending.billing.IInAppBillingService.Stub.Proxy(obj);
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, android.os.Parcel data, android.os.Parcel reply, int flags) throws android.os.RemoteException {
            android.os.Bundle _arg3;
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg0 = data.readInt();
                    java.lang.String _arg1 = data.readString();
                    java.lang.String _arg2 = data.readString();
                    int _result = isBillingSupported(_arg0, _arg1, _arg2);
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg02 = data.readInt();
                    java.lang.String _arg12 = data.readString();
                    java.lang.String _arg22 = data.readString();
                    if (data.readInt() != 0) {
                        _arg3 = (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(data);
                    } else {
                        _arg3 = null;
                    }
                    android.os.Bundle _result2 = getSkuDetails(_arg02, _arg12, _arg22, _arg3);
                    reply.writeNoException();
                    if (_result2 != null) {
                        reply.writeInt(1);
                        _result2.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg03 = data.readInt();
                    java.lang.String _arg13 = data.readString();
                    java.lang.String _arg23 = data.readString();
                    java.lang.String _arg32 = data.readString();
                    java.lang.String _arg4 = data.readString();
                    android.os.Bundle _result3 = getBuyIntent(_arg03, _arg13, _arg23, _arg32, _arg4);
                    reply.writeNoException();
                    if (_result3 != null) {
                        reply.writeInt(1);
                        _result3.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg04 = data.readInt();
                    java.lang.String _arg14 = data.readString();
                    java.lang.String _arg24 = data.readString();
                    java.lang.String _arg33 = data.readString();
                    android.os.Bundle _result4 = getPurchases(_arg04, _arg14, _arg24, _arg33);
                    reply.writeNoException();
                    if (_result4 != null) {
                        reply.writeInt(1);
                        _result4.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg05 = data.readInt();
                    java.lang.String _arg15 = data.readString();
                    java.lang.String _arg25 = data.readString();
                    int _result5 = consumePurchase(_arg05, _arg15, _arg25);
                    reply.writeNoException();
                    reply.writeInt(_result5);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements com.android.vending.billing.IInAppBillingService {
            private android.os.IBinder mRemote;

            Proxy(android.os.IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR;
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int isBillingSupported(int apiVersion, java.lang.String packageName, java.lang.String type) throws android.os.RemoteException {
                android.os.Parcel _data = android.os.Parcel.obtain();
                android.os.Parcel _reply = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR);
                    _data.writeInt(apiVersion);
                    _data.writeString(packageName);
                    _data.writeString(type);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public android.os.Bundle getSkuDetails(int apiVersion, java.lang.String packageName, java.lang.String type, android.os.Bundle skusBundle) throws android.os.RemoteException {
                android.os.Bundle _result;
                android.os.Parcel _data = android.os.Parcel.obtain();
                android.os.Parcel _reply = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR);
                    _data.writeInt(apiVersion);
                    _data.writeString(packageName);
                    _data.writeString(type);
                    if (skusBundle != null) {
                        _data.writeInt(1);
                        skusBundle.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public android.os.Bundle getBuyIntent(int apiVersion, java.lang.String packageName, java.lang.String sku, java.lang.String type, java.lang.String developerPayload) throws android.os.RemoteException {
                android.os.Bundle _result;
                android.os.Parcel _data = android.os.Parcel.obtain();
                android.os.Parcel _reply = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR);
                    _data.writeInt(apiVersion);
                    _data.writeString(packageName);
                    _data.writeString(sku);
                    _data.writeString(type);
                    _data.writeString(developerPayload);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public android.os.Bundle getPurchases(int apiVersion, java.lang.String packageName, java.lang.String type, java.lang.String continuationToken) throws android.os.RemoteException {
                android.os.Bundle _result;
                android.os.Parcel _data = android.os.Parcel.obtain();
                android.os.Parcel _reply = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR);
                    _data.writeInt(apiVersion);
                    _data.writeString(packageName);
                    _data.writeString(type);
                    _data.writeString(continuationToken);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int consumePurchase(int apiVersion, java.lang.String packageName, java.lang.String purchaseToken) throws android.os.RemoteException {
                android.os.Parcel _data = android.os.Parcel.obtain();
                android.os.Parcel _reply = android.os.Parcel.obtain();
                try {
                    _data.writeInterfaceToken(com.android.vending.billing.IInAppBillingService.Stub.DESCRIPTOR);
                    _data.writeInt(apiVersion);
                    _data.writeString(packageName);
                    _data.writeString(purchaseToken);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
