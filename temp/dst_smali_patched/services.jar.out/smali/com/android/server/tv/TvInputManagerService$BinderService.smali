.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureParentalControlsPermission()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    return-object v1

    :cond_0
    const-string v1, "unknown"

    return-object v1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "callingUid":I
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "acquireTvInputHardware"

    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .local v5, "resolvedUserId":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "addBlockedRating"

    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .locals 14
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .local v6, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    move/from16 v0, p4

    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    .local v8, "hardwareInputId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v13

    .local v13, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    :try_start_3
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "sessionState$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v9    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    :try_start_4
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    if-eqz v8, :cond_4

    move-object v3, v8

    :goto_0
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .restart local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4
    move-object v3, p1

    goto :goto_0
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "createOverlayView"

    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in createOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .locals 20
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "isRecordingSession"    # Z
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .local v10, "callingUid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "createSession"

    move/from16 v0, p5

    invoke-static {v3, v5, v10, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v11

    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v18

    .local v18, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .local v16, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v16, :cond_2

    const-string v3, "TvInputManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find input state for inputId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .restart local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_5
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v13

    .local v13, "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .local v17, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v17, :cond_3

    new-instance v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v11, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .restart local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    :try_start_7
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v12, 0x0

    move/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V

    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    invoke-static {v3, v5, v4, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap12(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    :try_start_8
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap21(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v13    # "info":Landroid/media/tv/TvInputInfo;
    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v3

    :try_start_a
    monitor-exit v19

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "dispatchSurfaceChanged"

    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "TvInputManagerService"

    const-string v8, "error in dispatchSurfaceChanged"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v22, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Permission Denial: can\'t dump TvInputManager from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "User Ids (Current user: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "):"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v20    # "userId":I
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .restart local v20    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v21

    .local v21, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "UserState ("

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "):"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string v22, "inputMap: inputId -> TvInputState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "i":I
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v12    # "i":I
    .restart local v20    # "userId":I
    .restart local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v22, "packageSet:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .end local v13    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v22, "clientStateMap: ITvInputClient -> ClientState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .local v6, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string v22, "sessionTokens:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "token$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .local v18, "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .end local v18    # "token":Landroid/os/IBinder;
    :cond_4
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "clientTokens: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "userId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_4

    .end local v6    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v22, "serviceStateMap: ComponentName -> ServiceState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .local v16, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string v22, "sessionTokens:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "token$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .restart local v18    # "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .end local v18    # "token":Landroid/os/IBinder;
    :cond_6
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "service: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "callback: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bound: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reconnecting: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_6

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v16    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v22, "sessionStateMap: ITvInputSession -> SessionState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .local v17, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "client: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seq: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "callingUid: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "userId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "session: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "logUri: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hardwareSessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_8

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v17    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v22, "callbackSet:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "callback$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/ITvInputManagerCallback;

    .local v4, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .end local v4    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_9
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mainSessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .end local v5    # "callback$iterator":Ljava/util/Iterator;
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_a
    monitor-exit v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "getAvailableTvStreamConfigList"

    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v9, "getBlockedRatings"

    invoke-static {v6, v7, v8, p1, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v2, v8, v6

    .local v2, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2    # "rating":Landroid/media/tv/TvContentRating;
    :cond_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .end local v3    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "android.permission.DVB_DEVICE"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires DVB_DEVICE permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v1, Ljava/io/File;

    const-string v9, "/dev"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "devDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v9, v8

    .local v4, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-get6()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "adapterId":I
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "deviceId":I
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v11, v0, v2}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "adapterId":I
    .end local v2    # "deviceId":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    .end local v1    # "devDirectory":Ljava/io/File;
    .end local v3    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "getTvContentRatingSystemList"

    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v9, "getTvInputInfo"

    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_0

    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getTvInputList(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string v10, "getTvInputList"

    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .local v4, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .end local v4    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v5    # "state$iterator":Ljava/util/Iterator;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .restart local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v5    # "state$iterator":Ljava/util/Iterator;
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .locals 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "getTvInputState"

    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    goto :goto_0

    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "isParentalControlsEnabled"

    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "isRatingBlocked"

    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSingleSessionActive(I)Z
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "isSingleSessionActive"

    invoke-static {v6, v7, v0, p1, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-ne v6, v9, :cond_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_0
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v6, v11, :cond_2

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_1
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.DVB_DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires DVB_DEVICE permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    packed-switch p2, :pswitch_data_0

    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DVB device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_0
    :try_start_1
    const-string v4, "/dev/dvb%d.demux%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "deviceFileName":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ne v8, p2, :cond_1

    const/high16 v4, 0x30000000

    :goto_1
    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_1
    :try_start_3
    const-string v4, "/dev/dvb%d.dvr%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_2
    const-string v4, "/dev/dvb%d.frontend%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    :cond_1
    const/high16 v4, 0x10000000

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 9
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "registerCallback"

    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "TvInputManagerService"

    const-string v7, "client process has already died"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "relayoutOverlayView"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in relayoutOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "releaseSession"

    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "releaseTvInputHardware"

    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "removeBlockedRating"

    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "removeOverlayView"

    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in removeOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "selectTrack"

    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in selectTrack"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "sendAppPrivateCommand"

    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in appPrivateCommand"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "setCaptionEnabled"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in setCaptionEnabled"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "setMainSession"

    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v1    # "oldMainSessionToken":Landroid/os/IBinder;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "setParentalControlsEnabled"

    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "setSurface"

    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "TvInputManagerService"

    const-string v8, "error in setSurface"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .locals 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string v10, "setVolume"

    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v6

    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "identity":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v10, v8}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "TvInputManagerService"

    const-string v10, "error in setVolume"

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "startRecording"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in startRecording"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "stopRecording"

    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in stopRecording"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftEnablePositionTracking"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftPause"

    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftPause"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftPlay"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftPlay"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftResume"

    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftResume"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftSeekTo"

    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftSeekTo"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "timeShiftSetPlaybackParams"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "callingUid":I
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const-string v12, "tune"

    move/from16 v0, p4

    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, p1, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v9

    .local v9, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get5(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_0
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v10, "TvInputManagerService"

    const-string v12, "error in tune"

    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "unblockContent"

    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TvInputManagerService"

    const-string v7, "error in unblockContent"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 8
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "unregisterCallback"

    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .locals 10
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v1, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v1, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not allowed to change TvInputInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v9, "updateTvInputInfo"

    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5, p1}, Lcom/android/server/tv/TvInputManagerService;->-wrap22(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method