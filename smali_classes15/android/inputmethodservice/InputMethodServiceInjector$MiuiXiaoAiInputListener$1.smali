.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "textFromXiaoAi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "composingFromXiaoAi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sendFromXiaoAi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1300()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v3

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_2
    :goto_0
    return-void
.end method
