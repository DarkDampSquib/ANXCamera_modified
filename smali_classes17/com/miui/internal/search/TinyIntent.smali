.class public Lcom/miui/internal/search/TinyIntent;
.super Ljava/lang/Object;
.source "TinyIntent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "intent_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_class"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent_extra"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "intent_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/TinyIntent;->setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/internal/search/TinyIntent;->setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/miui/internal/search/TinyIntent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/TinyIntent;->setData(Landroid/net/Uri;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    const-string v2, "intent_action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    const-string v2, "intent_package"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_class"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string v2, "intent_extra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method
