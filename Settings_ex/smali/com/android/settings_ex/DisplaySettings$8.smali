.class Lcom/android/settings_ex/DisplaySettings$8;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;I)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$8;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput p2, p0, Lcom/android/settings_ex/DisplaySettings$8;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$8;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$700(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings$8;->val$brightness:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1248
    return-void
.end method
