.class Lcom/android/settings_ex/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/settings_ex/wifi/WifiEnabler;->handleWifiStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$000(Lcom/android/settings_ex/wifi/WifiEnabler;I)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    # getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$100(Lcom/android/settings_ex/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$200(Lcom/android/settings_ex/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 64
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    # getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$100(Lcom/android/settings_ex/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiEnabler$1;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$200(Lcom/android/settings_ex/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method
