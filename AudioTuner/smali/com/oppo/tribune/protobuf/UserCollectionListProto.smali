.class public final Lcom/oppo/tribune/protobuf/UserCollectionListProto;
.super Ljava/lang/Object;
.source "UserCollectionListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;,
        Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlistOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_pb_user_collectionlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_pb_user_collectionlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1120
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\n\u001dpb_user_collection_list.proto\u0012\u0008protobuf\u001a\u0018pb_user_collection.proto\"\u00d5\u0001\n\u0016pb_user_collectionlist\u0012:\n\u0014user_collection_list\u0018\u000b \u0003(\u000b2\u001c.protobuf.pb_user_collection\u0012\u000c\n\u0004page\u0018\u000c \u0001(\u0005\u0012\u000f\n\u0007perpage\u0018\r \u0001(\u0005\u0012\r\n\u0005total\u0018\u000e \u0001(\u0005\u0012\u000b\n\u0003fid\u0018\u0001 \u0001(\u0003\u0012\u0019\n\u0011forum_threadcount\u0018\u0002 \u0001(\u0003\u0012\u000b\n\u0003tpp\u0018\u0003 \u0001(\u0003\u0012\u000c\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006picurl\u0018\u0006 \u0001(\tB4\n\u0019com.oppo.tribune.protobufB\u0017UserCollectionListProto"

    aput-object v2, v1, v4

    .line 1131
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/UserCollectionListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserCollectionListProto$1;-><init>()V

    .line 1147
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1152
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->internal_static_protobuf_pb_user_collectionlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->internal_static_protobuf_pb_user_collectionlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->internal_static_protobuf_pb_user_collectionlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->internal_static_protobuf_pb_user_collectionlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1115
    sget-object v0, Lcom/oppo/tribune/protobuf/UserCollectionListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
