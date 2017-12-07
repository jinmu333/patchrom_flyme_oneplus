.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final certificates:[[Ljava/security/cert/Certificate;

.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final oplibDependencyStr:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZLjava/lang/String;)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "revisionCode"    # I
    .param p6, "installLocation"    # I
    .param p8, "signatures"    # [Landroid/content/pm/Signature;
    .param p9, "certificates"    # [[Ljava/security/cert/Certificate;
    .param p10, "coreApp"    # Z
    .param p11, "multiArch"    # Z
    .param p12, "use32bitAbi"    # Z
    .param p13, "extractNativeLibs"    # Z
    .param p14, "oplibDependencyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[[",
            "Ljava/security/cert/Certificate;",
            "ZZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 421
    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 422
    iput p4, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 423
    iput p5, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 424
    iput p6, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 425
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 426
    iput-object p8, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    .line 427
    iput-object p9, p0, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    .line 428
    iput-boolean p10, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 429
    iput-boolean p11, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 430
    iput-boolean p12, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 431
    iput-boolean p13, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 432
    iput-object p14, p0, Landroid/content/pm/PackageParser$ApkLite;->oplibDependencyStr:Ljava/lang/String;

    .line 418
    return-void
.end method
