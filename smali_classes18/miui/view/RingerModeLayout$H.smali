.class final Lmiui/view/RingerModeLayout$H;
.super Landroid/os/Handler;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_EXPAND_CONTENT:I = 0x2

.field private static final UPDATE_TIME:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method public constructor <init>(Lmiui/view/RingerModeLayout;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$000(Lmiui/view/RingerModeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$400(Lmiui/view/RingerModeLayout;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$2100(Lmiui/view/RingerModeLayout;)Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$2000(Lmiui/view/RingerModeLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/VolumeDialog;->recheckAll()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$1900(Lmiui/view/RingerModeLayout;)V

    nop

    :goto_0
    return-void
.end method
