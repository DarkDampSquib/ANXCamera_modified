.class Landroid/widget/Editor$EmailAddPopupWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$EmailAddPopupWindow;->createAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$EmailAddPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$EmailAddPopupWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$EmailAddPopupWindow$1;->this$1:Landroid/widget/Editor$EmailAddPopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$EmailAddPopupWindow$1;->this$1:Landroid/widget/Editor$EmailAddPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$EmailAddPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    return-void
.end method
