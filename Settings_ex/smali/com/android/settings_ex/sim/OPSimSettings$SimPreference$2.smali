.class Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$2;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->createEditDialog(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$2;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1041
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1042
    return-void
.end method
