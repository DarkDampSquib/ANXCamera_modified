.class Landroid/widget/Editor$ActionPinnedPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$ActionPinnedPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$2000(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$2100(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$2100(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$2200(Landroid/widget/Editor$InsertionHandleView;)V

    :cond_1
    return-void
.end method
