.class Lmiui/maml/MamlConfigSettings$NumberChoiceItem;
.super Lmiui/maml/MamlConfigSettings$ValueChoiceItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberChoiceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->OnValueChange(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v0}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;->mId:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
