.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$1;,
        Landroid/content/pm/ActivityInfo$WindowLayout;
    }
.end annotation


# static fields
.field public static final CONFIG_DENSITY:I = 0x1000

.field public static final CONFIG_FONT_SCALE:I = 0x40000000

.field public static final CONFIG_KEYBOARD:I = 0x10

.field public static final CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final CONFIG_LOCALE:I = 0x4

.field public static final CONFIG_MCC:I = 0x1

.field public static final CONFIG_MNC:I = 0x2

.field public static CONFIG_NATIVE_BITS:[I = null

.field public static final CONFIG_NAVIGATION:I = 0x40

.field public static final CONFIG_ONEPLUSFONT:I = -0x80000000

.field public static final CONFIG_ORIENTATION:I = 0x80

.field public static final CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final CONFIG_SCREEN_SIZE:I = 0x400

.field public static final CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final CONFIG_TOUCHSCREEN:I = 0x8

.field public static final CONFIG_UI_MODE:I = 0x200

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final FLAG_ALLOW_EMBEDDED:I = -0x80000000

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final FLAG_ALWAYS_FOCUSABLE:I = 0x40000

.field public static final FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final FLAG_ENABLE_VR_MODE:I = 0x8000

.field public static final FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final FLAG_IMMERSIVE:I = 0x800

.field public static final FLAG_MULTIPROCESS:I = 0x1

.field public static final FLAG_NO_HISTORY:I = 0x80

.field public static final FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final FLAG_SINGLE_USER:I = 0x40000000

.field public static final FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final LAUNCH_MULTIPLE:I = 0x0

.field public static final LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final LAUNCH_SINGLE_TASK:I = 0x2

.field public static final LAUNCH_SINGLE_TOP:I = 0x1

.field public static final LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED:I = 0x3

.field public static final LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final PERSIST_NEVER:I = 0x1

.field public static final PERSIST_ROOT_ONLY:I = 0x0

.field public static final RESIZE_MODE_CROP_WINDOWS:I = 0x1

.field public static final RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final RESIZE_MODE_RESIZEABLE_AND_PIPABLE:I = 0x3

.field public static final RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field public static final SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_ORIENTATION_USER:I = 0x2

.field public static final SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1


# instance fields
.field public configChanges:I

.field public documentLaunchMode:I

.field public flags:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public maxRecents:I

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public requestedVrComponent:Ljava/lang/String;

.field public resizeMode:I

.field public screenOrientation:I

.field public softInputMode:I

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 646
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 964
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    .line 963
    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void

    .line 646
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 790
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 795
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 796
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 797
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 798
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 799
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 800
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 801
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 802
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 803
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 804
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 805
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 806
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 807
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 808
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 809
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 810
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 811
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 793
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 974
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 991
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 993
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 973
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static activityInfoConfigJavaToNative(I)I
    .locals 3
    .param p0, "input"    # I

    .prologue
    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, "output":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 672
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 673
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 671
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    return v1
.end method

.method public static activityInfoConfigNativeToJava(I)I
    .locals 3
    .param p0, "input"    # I

    .prologue
    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "output":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 687
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 688
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    return v1
.end method

.method public static isResizeableMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 852
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 853
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 854
    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "lockTaskLaunchMode"    # I

    .prologue
    .line 764
    packed-switch p0, :pswitch_data_0

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object v0

    .line 768
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object v0

    .line 770
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object v0

    .line 772
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED"

    return-object v0

    .line 764
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private persistableModeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 826
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    packed-switch v0, :pswitch_data_0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 827
    :pswitch_0
    const-string/jumbo v0, "PERSIST_ROOT_ONLY"

    return-object v0

    .line 828
    :pswitch_1
    const-string/jumbo v0, "PERSIST_NEVER"

    return-object v0

    .line 829
    :pswitch_2
    const-string/jumbo v0, "PERSIST_ACROSS_REBOOTS"

    return-object v0

    .line 826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static resizeModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 859
    packed-switch p0, :pswitch_data_0

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 861
    :pswitch_0
    const-string/jumbo v0, "RESIZE_MODE_UNRESIZEABLE"

    return-object v0

    .line 863
    :pswitch_1
    const-string/jumbo v0, "RESIZE_MODE_CROP_WINDOWS"

    return-object v0

    .line 865
    :pswitch_2
    const-string/jumbo v0, "RESIZE_MODE_RESIZEABLE"

    return-object v0

    .line 867
    :pswitch_3
    const-string/jumbo v0, "RESIZE_MODE_RESIZEABLE_AND_PIPABLE"

    return-object v0

    .line 869
    :pswitch_4
    const-string/jumbo v0, "RESIZE_MODE_FORCE_RESIZEABLE"

    return-object v0

    .line 859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 876
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 875
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 881
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 885
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 887
    const-string/jumbo v1, " targetActivity="

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 887
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    const-string/jumbo v1, " persistableMode="

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 890
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v0, :cond_2

    if-eqz p3, :cond_a

    .line 891
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "launchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 892
    const-string/jumbo v1, " flags=0x"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 892
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    const-string/jumbo v1, " theme=0x"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 895
    :cond_3
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 896
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz v0, :cond_b

    .line 897
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 898
    const-string/jumbo v1, " configChanges=0x"

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 898
    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 899
    const-string/jumbo v1, " softInputMode=0x"

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 899
    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 901
    :cond_5
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v0, :cond_6

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 904
    :cond_6
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockTaskLaunchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 906
    iget v1, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 908
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_8

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "windowLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    const-string/jumbo v1, ", "

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    const-string/jumbo v1, "|"

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    const-string/jumbo v1, ", "

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 913
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requestedVrComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 917
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 880
    return-void

    .line 890
    :cond_a
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 896
    :cond_b
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v0, :cond_5

    goto/16 :goto_1
.end method

.method public getRealConfigChanged()I
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 704
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    .line 703
    :goto_0
    return v0

    .line 706
    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_0
.end method

.method public final getThemeResource()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    goto :goto_0
.end method

.method isFixedOrientation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 839
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v2, :cond_0

    .line 840
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v2, v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 842
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 843
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 844
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 845
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 846
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 847
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 922
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    const-string/jumbo v1, " "

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    const-string/jumbo v1, "}"

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 931
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 932
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    iget v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 951
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 953
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    :goto_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    return-void

    .line 957
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
