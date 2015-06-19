.class public final enum Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum d:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum e:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum f:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum g:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum h:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum i:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum j:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum m:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public static final enum n:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field private static final synthetic o:[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.field public final httpCode:I
.field public final spdyGoAwayCode:I
.field public final spdyRstCode:I
.method static constructor <clinit>()V
.registers 16
const/4 v15, 0x3
const/4 v2, 0x0
const/4 v14, 0x2
const/4 v7, 0x1
const/4 v4, -0x1
new-instance v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v1, "NO_ERROR"
move v3, v2
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->a:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v5, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v6, "PROTOCOL_ERROR"
move v8, v7
move v9, v7
move v10, v7
invoke-direct/range {v5 .. v10}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v5, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "INVALID_STREAM"
move v10, v14
move v11, v7
move v12, v14
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "UNSUPPORTED_VERSION"
const/4 v12, 0x4
move v10, v15
move v11, v7
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->d:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "STREAM_IN_USE"
const/4 v10, 0x4
const/16 v12, 0x8
move v11, v7
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->e:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "STREAM_ALREADY_CLOSED"
const/4 v10, 0x5
const/16 v12, 0x9
move v11, v7
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->f:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "INTERNAL_ERROR"
const/4 v10, 0x6
const/4 v12, 0x6
move v11, v14
move v13, v14
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->g:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "FLOW_CONTROL_ERROR"
const/4 v10, 0x7
const/4 v12, 0x7
move v11, v15
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->h:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "STREAM_CLOSED"
const/16 v10, 0x8
const/4 v11, 0x5
move v12, v4
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->i:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "FRAME_TOO_LARGE"
const/16 v10, 0x9
const/4 v11, 0x6
const/16 v12, 0xb
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->j:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "REFUSED_STREAM"
const/16 v10, 0xa
const/4 v11, 0x7
move v12, v15
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "CANCEL"
const/16 v10, 0xb
const/16 v11, 0x8
const/4 v12, 0x5
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "COMPRESSION_ERROR"
const/16 v10, 0xc
const/16 v11, 0x9
move v12, v4
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->m:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
new-instance v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const-string v9, "INVALID_CREDENTIALS"
const/16 v10, 0xd
const/16 v12, 0xa
move v11, v4
move v13, v4
invoke-direct/range {v8 .. v13}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V
sput-object v8, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->n:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
const/16 v0, 0xe
new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/ErrorCode;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->a:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v1, v0, v2
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v1, v0, v7
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v1, v0, v14
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->d:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v1, v0, v15
const/4 v1, 0x4
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->e:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->f:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->g:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->h:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->i:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->j:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->m:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
const/16 v1, 0xd
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->n:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
aput-object v2, v0, v1
sput-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->o:[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IIII)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I
iput p4, p0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I
iput p5, p0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I
return-void
.end method
.method public static a(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.registers 6
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->values()[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_14
aget-object v0, v2, v1
iget v4, v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I
if-ne v4, p0, :cond_10
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_14
const/4 v0, 0x0
goto :goto_f
.end method
.method public static b(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.registers 6
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->values()[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_14
aget-object v0, v2, v1
iget v4, v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I
if-ne v4, p0, :cond_10
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_14
const/4 v0, 0x0
goto :goto_f
.end method
.method public static c(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.registers 6
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->values()[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_14
aget-object v0, v2, v1
iget v4, v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I
if-ne v4, p0, :cond_10
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_14
const/4 v0, 0x0
goto :goto_f
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.registers 2
const-class v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;
return-object v0
.end method
.method public static values()[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->o:[Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0}, [Lcom/squareup/okhttp/internal/spdy/ErrorCode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/squareup/okhttp/internal/spdy/ErrorCode;
return-object v0
.end method