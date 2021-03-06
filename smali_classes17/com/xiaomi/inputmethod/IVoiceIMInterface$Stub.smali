.class public abstract Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;
.super Landroid/os/Binder;
.source "IVoiceIMInterface.java"

# interfaces
.implements Lcom/xiaomi/inputmethod/IVoiceIMInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/inputmethod/IVoiceIMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.inputmethod.IVoiceIMInterface"

.field static final TRANSACTION_keyboardDisappear:I = 0x4

.field static final TRANSACTION_setMotionEvent:I = 0x1

.field static final TRANSACTION_voiceButtonDown:I = 0x2

.field static final TRANSACTION_voiceButtonUP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.inputmethod.IVoiceIMInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.inputmethod.IVoiceIMInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object v1

    :cond_1
    new-instance v1, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaomi/inputmethod/IVoiceIMInterface;
    .locals 1

    sget-object v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "keyboardDisappear"

    return-object v0

    :cond_1
    const-string/jumbo v0, "voiceButtonUP"

    return-object v0

    :cond_2
    const-string/jumbo v0, "voiceButtonDown"

    return-object v0

    :cond_3
    const-string/jumbo v0, "setMotionEvent"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/inputmethod/IVoiceIMInterface;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.xiaomi.inputmethod.IVoiceIMInterface"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_5

    const/4 v0, 0x2

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->keyboardDisappear()V

    return v10

    :cond_2
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->voiceButtonUP(J)V

    return v10

    :cond_3
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    move-object v14, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v14, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->voiceButtonDown(JLandroid/os/RemoteCallback;II)V

    return v10

    :cond_5
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6, v0}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->setMotionEvent(Landroid/view/MotionEvent;)V

    return v10
.end method
