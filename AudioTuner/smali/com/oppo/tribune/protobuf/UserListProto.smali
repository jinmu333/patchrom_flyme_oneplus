.class public final Lcom/oppo/tribune/protobuf/UserListProto;
.super Ljava/lang/Object;
.source "UserListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;,
        Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pb_userlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_userlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 832
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\n\u0011pb_userlist.proto\u001a\rpb_user.proto\"W\n\u000bpb_userlist\u0012\u001a\n\u0008userlist\u0018\u0001 \u0003(\u000b2\u0008.pb_user\u0012\u000c\n\u0004page\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005total\u0018\u0004 \u0001(\u0005B*\n\u0019com.oppo.tribune.protobufB\rMyFollowProto"

    aput-object v2, v1, v4

    .line 837
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/UserListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserListProto$1;-><init>()V

    .line 852
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 857
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 827
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
