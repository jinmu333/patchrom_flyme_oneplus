.class Lcom/android/server/policy/OpGlobalActions$1$2;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpGlobalActions$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OpGlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpGlobalActions$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OpGlobalActions$1;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions$1$2;->this$1:Lcom/android/server/policy/OpGlobalActions$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions$1$2;->this$1:Lcom/android/server/policy/OpGlobalActions$1;

    iget-object v0, v0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/OpGlobalActions;->-wrap0(Lcom/android/server/policy/OpGlobalActions;)V

    .line 154
    return-void
.end method
