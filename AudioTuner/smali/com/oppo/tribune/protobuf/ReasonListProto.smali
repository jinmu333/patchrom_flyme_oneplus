.class public final Lcom/oppo/tribune/protobuf/ReasonListProto;
.super Ljava/lang/Object;
.source "ReasonListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;,
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlistOrBuilder;,
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;,
        Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pb_reason_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_reason_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pb_reasonlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_pb_reasonlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1153
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0013pb_reasonlist.proto\"\'\n\tpb_reason\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0005\u0012\u000e\n\u0006reason\u0018\u0002 \u0002(\t\"/\n\rpb_reasonlist\u0012\u001e\n\nreasonlist\u0018\u0001 \u0003(\u000b2\n.pb_reasonB,\n\u0019com.oppo.tribune.protobufB\u000fReasonListProto"

    aput-object v2, v1, v3

    .line 1157
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$1;-><init>()V

    .line 1178
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1183
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
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/ReasonListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1148
    sget-object v0, Lcom/oppo/tribune/protobuf/ReasonListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
