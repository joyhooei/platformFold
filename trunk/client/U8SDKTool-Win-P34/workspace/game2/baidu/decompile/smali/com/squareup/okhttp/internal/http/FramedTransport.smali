.class public final Lcom/squareup/okhttp/internal/http/FramedTransport;
.super Ljava/lang/Object;
.source "FramedTransport.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# static fields
.field private static final HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private final httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private stream:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/FramedTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/FramedTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/framed/FramedConnection;)V
    .registers 3
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p2, "framedConnection"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 75
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 76
    return-void
.end method

.method private static isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .registers 3
    .param p0, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p1, "name"    # Lokio/ByteString;

    .prologue
    .line 224
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_b

    .line 225
    sget-object v0, Lcom/squareup/okhttp/internal/http/FramedTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_a
    return v0

    .line 226
    :cond_b
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_16

    .line 227
    sget-object v0, Lcom/squareup/okhttp/internal/http/FramedTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    .line 229
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .registers 15
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/squareup/okhttp/Protocol;",
            ")",
            "Lcom/squareup/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 174
    .local v6, "status":Ljava/lang/String;
    const-string v10, "HTTP/1.1"

    .line 176
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 177
    .local v1, "headersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    sget-object v11, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 178
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_16
    if-ge v2, v4, :cond_6a

    .line 179
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v3, v11, Lcom/squareup/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    .line 180
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v11, v11, Lcom/squareup/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_2d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_67

    .line 182
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 183
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_3f

    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    :cond_3f
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 188
    move-object v6, v8

    .line 194
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v0, 0x1

    .line 195
    goto :goto_2d

    .line 189
    :cond_4f
    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->VERSION:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 190
    move-object v10, v8

    goto :goto_4c

    .line 191
    :cond_59
    invoke-static {p1, v3}, Lcom/squareup/okhttp/internal/http/FramedTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v11

    if-nez v11, :cond_4c

    .line 192
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v8}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_4c

    .line 178
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 197
    .end local v3    # "name":Lokio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_6a
    if-nez v6, :cond_74

    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 199
    :cond_74
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v7

    .line 200
    .local v7, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    new-instance v11, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v11}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 201
    invoke-virtual {v11, p1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    iget v12, v7, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 202
    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    iget-object v12, v7, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 203
    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    .line 204
    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    return-object v11
.end method

.method public static writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .param p0, "request"    # Lcom/squareup/okhttp/Request;
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            "Lcom/squareup/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 115
    .local v1, "headers":Lcom/squareup/okhttp/Headers;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v12

    invoke-static {v12}, Lcom/squareup/okhttp/internal/http/RequestLine;->requestPath(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/okhttp/internal/Util;->hostHeader(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "host":Ljava/lang/String;
    sget-object v10, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v10, p1, :cond_88

    .line 120
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->VERSION:Lokio/ByteString;

    invoke-direct {v10, v11, p2}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    invoke-direct {v10, v11, v2}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_4f
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    .local v6, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v8

    .local v8, "size":I
    :goto_6b
    if-ge v3, v8, :cond_10e

    .line 132
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 133
    .local v5, "name":Lokio/ByteString;
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "value":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/squareup/okhttp/internal/http/FramedTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 130
    :cond_85
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 122
    .end local v3    # "i":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .end local v8    # "size":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_88
    sget-object v10, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v10, p1, :cond_97

    .line 123
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v10, v11, v2}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 125
    :cond_97
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 139
    .restart local v3    # "i":I
    .restart local v5    # "name":Lokio/ByteString;
    .restart local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .restart local v8    # "size":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_9d
    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    .line 140
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 141
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    .line 142
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    .line 143
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Lcom/squareup/okhttp/internal/framed/Header;->VERSION:Lokio/ByteString;

    .line 144
    invoke-virtual {v5, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    .line 149
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 150
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    invoke-direct {v10, v5, v9}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 155
    :cond_dc
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_dd
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_85

    .line 156
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10b

    .line 157
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/squareup/okhttp/internal/http/FramedTransport;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v10, Lcom/squareup/okhttp/internal/framed/Header;

    invoke-direct {v10, v5, v0}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_85

    .line 155
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_10b
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    .line 163
    .end local v4    # "j":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v9    # "value":Ljava/lang/String;
    :cond_10e
    return-object v7
.end method


# virtual methods
.method public canReuseConnection()Z
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;
    .registers 5
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    .registers 4
    .param p1, "engine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 216
    :cond_b
    return-void
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 101
    return-void
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .registers 5
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/squareup/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getSource()Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RealResponseBody;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v0
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/FramedTransport;->readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .registers 3
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lokio/Sink;)V

    .line 97
    return-void
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .registers 9
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    if-eqz v3, :cond_5

    .line 93
    :goto_4
    return-void

    .line 85
    :cond_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 86
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/squareup/okhttp/Request;)Z

    move-result v1

    .line 87
    .local v1, "permitsRequestBody":Z
    const/4 v0, 0x1

    .line 88
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Connection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/RequestLine;->version(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->framedConnection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 90
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/squareup/okhttp/internal/http/FramedTransport;->writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 89
    invoke-virtual {v3, v4, v1, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 92
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->stream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout()Lokio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/FramedTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_4
.end method