.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiVoiceInputListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_IME_VOICE_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "voice_input"

    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
