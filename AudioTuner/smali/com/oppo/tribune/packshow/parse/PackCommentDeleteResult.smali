.class public Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;
.super Lcom/oppo/tribune/packshow/parse/PackDeleteResult;
.source "PackCommentDeleteResult.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oppo/tribune/packshow/parse/PackDeleteResult;-><init>()V

    .line 27
    return-void
.end method

.method private static fromJson(Ljava/lang/String;)Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;

    return-object v0
.end method

.method private static getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v0, "http://ddinterface2.oneplus.cn:8000/comment/delComment"

    return-object v0
.end method

.method public static parse(Landroid/content/Context;JJ)Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedId"    # J
    .param p3, "commentId"    # J

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-static {p0}, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;->getServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v5

    .line 35
    :cond_1
    new-instance v3, Lcom/oppo/tribune/util/connection/PostMethod;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, p0, v4, v6, v7}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 36
    .local v3, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 37
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "feedId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "commentId"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v3, v2}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 40
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 41
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v6}, Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;->fromJson(Ljava/lang/String;)Lcom/oppo/tribune/packshow/parse/PackCommentDeleteResult;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
