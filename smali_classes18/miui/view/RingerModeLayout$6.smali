.class Lmiui/view/RingerModeLayout$6;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/RingerModeLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$1500(Lmiui/view/RingerModeLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    iget-boolean v1, v0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
