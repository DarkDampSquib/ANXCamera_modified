.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final STATE_RUNNING:I = 0x4

.field private static final STATE_STARTED:I = 0x3

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mInParole:Z

.field private mMsgWhat:I

.field private mNotifyHandler:Landroid/os/Handler;

.field private mParoleArray:[J

.field private mParoleCheckHandler:Landroid/os/Handler;

.field private mParoleIndex:I

.field private mParoleLock:Ljava/lang/Object;

.field private state:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .locals 3

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method static synthetic access$1600(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)I
    .locals 1

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    return v0
.end method

.method private enterParoleAndNotifyLocked()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private enterParoleLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    return-void
.end method

.method private exitParoleAndNotifyLocked()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private exitParoleLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    return-void
.end method

.method private onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    const/4 v3, 0x4

    const/16 v4, 0x3ea

    const/4 v5, 0x1

    if-eq v1, v2, :cond_5

    if-eq v1, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v1, :cond_2

    const-string v1, "PowerKeeperPolicy"

    const-string v2, "Parole check array is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v1, v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v3, v2, 0x1

    if-lt v3, v1, :cond_4

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_1

    :cond_4
    add-int/2addr v2, v5

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    :goto_1
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v2, v2, v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eq v1, v5, :cond_6

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v2, :cond_7

    aget-wide v1, v2, v1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public isInParoleState()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWorking()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setParoleCheckParam([J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1900(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    if-eqz p1, :cond_3

    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    :cond_4
    :goto_1
    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startParoleCheck()V
    .locals 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1800(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v1

    const-string/jumbo v2, "startParoleCheck"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopParoleCheck()V
    .locals 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1800(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v1

    const-string/jumbo v2, "stopParoleCheck"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
