.class Lcom/android/settings_ex/notification/ZenModeSettings$8$2;
.super Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings$8;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$2;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$2;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeSettings$8;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$2;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeSettings$8;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "days.onChanged sleepMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$2;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeSettings$8;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 355
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$2;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeSettings$8;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method
