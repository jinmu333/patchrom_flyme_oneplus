.class Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/oneplus/settings/accessibility/SettingsContentObserver;
.source "OPToggleAccessibilityServicePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/oneplus/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    # invokes: Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->access$000(Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;)V

    .line 53
    return-void
.end method
