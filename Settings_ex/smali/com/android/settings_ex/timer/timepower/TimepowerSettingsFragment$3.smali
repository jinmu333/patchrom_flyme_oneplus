.class Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    # getter for: Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z
    invoke-static {v0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->access$000(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    # invokes: Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->access$100(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->access$200(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method
