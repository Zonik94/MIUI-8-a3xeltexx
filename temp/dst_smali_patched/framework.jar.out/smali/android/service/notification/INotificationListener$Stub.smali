.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final TRANSACTION_onInterruptionFilterChanged:I = 0x6

.field static final TRANSACTION_onListenerConnected:I = 0x1

.field static final TRANSACTION_onListenerHintsChanged_4:I = 0x5

.field static final TRANSACTION_onNotificationActionClick:I = 0xa

.field static final TRANSACTION_onNotificationClick:I = 0x9

.field static final TRANSACTION_onNotificationEnqueued:I = 0x7

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate_3:I = 0x4

.field static final TRANSACTION_onNotificationRemovedReason:I = 0xb

.field static final TRANSACTION_onNotificationRemoved_2:I = 0x3

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.service.notification.INotificationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/notification/INotificationListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    :goto_0
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_0

    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_2
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .local v1, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    :goto_1
    invoke-virtual {p0, v1, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_1

    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_3
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v10, 0x1

    return v10

    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_2

    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_4
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    :goto_3
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v10, 0x1

    return v10

    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_3

    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_5
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    const/4 v10, 0x1

    return v10

    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    const/4 v10, 0x1

    return v10

    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x1

    .local v9, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v1, v4, v9}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V

    const/4 v10, 0x1

    return v10

    .end local v9    # "_arg2":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v4    # "_arg1":I
    :sswitch_8
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    .restart local v9    # "_arg2":Z
    :goto_5
    invoke-virtual {p0, v3, v6, v7, v9}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;JZ)V

    const/4 v10, 0x1

    return v10

    .end local v9    # "_arg2":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    :sswitch_9
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual {p0, v3, v6, v7}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClick(Ljava/lang/String;J)V

    const/4 v10, 0x1

    return v10

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    :sswitch_a
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    invoke-virtual {p0, v3, v6, v7, v8}, Landroid/service/notification/INotificationListener$Stub;->onNotificationActionClick(Ljava/lang/String;JI)V

    const/4 v10, 0x1

    return v10

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    :sswitch_b
    const-string v10, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v3, v6, v7, v8}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemovedReason(Ljava/lang/String;JI)V

    const/4 v10, 0x1

    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method