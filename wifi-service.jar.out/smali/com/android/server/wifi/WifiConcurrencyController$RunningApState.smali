.class Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;
.super Lcom/android/internal/util/State;
.source "WifiConcurrencyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConcurrencyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningApState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConcurrencyController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConcurrencyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConcurrencyController;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConcurrencyController;->-wrap3(Lcom/android/server/wifi/WifiConcurrencyController;)V

    .line 192
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 198
    invoke-static {}, Lcom/android/server/wifi/WifiConcurrencyController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConcurrencyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RunningApState :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiConcurrencyController;->-wrap0(Lcom/android/server/wifi/WifiConcurrencyController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConcurrencyController;->-get5(Lcom/android/server/wifi/WifiConcurrencyController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->-wrap2(Lcom/android/server/wifi/WifiConcurrencyController;Lcom/android/internal/util/IState;)V

    .line 208
    const/4 v0, 0x1

    return v0

    .line 199
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
