.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->setParam(IF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field final synthetic val$paramInt:I

.field final synthetic val$paramValue:F


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;IF)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iput p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramInt:I

    iput p3, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 113
    iget v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramInt:I

    iget v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramValue:F

    float-to-double v2, v2

    const/4 v4, -0x1

    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetPresetParam(IDI)Z
    invoke-static {v1, v2, v3, v4}, Lcom/waves/maxxaudio/MaxxAudioService;->access$100(IDI)Z

    move-result v0

    .line 115
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsf MaxxAudioService.setParam paramInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paramValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;->val$paramValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 119
    return-void
.end method
