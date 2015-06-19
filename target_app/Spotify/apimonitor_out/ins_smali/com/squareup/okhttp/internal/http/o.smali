.class public final Lcom/squareup/okhttp/internal/http/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/ThreadLocal;
.field private static final b:[Ljava/lang/String;
.field private static final c:[Ljava/text/DateFormat;
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0xe
new-instance v0, Lcom/squareup/okhttp/internal/http/o$1;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/o$1;-><init>()V
sput-object v0, Lcom/squareup/okhttp/internal/http/o;->a:Ljava/lang/ThreadLocal;
new-array v0, v3, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "EEE MMM d HH:mm:ss yyyy"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "EEE, dd MMM yy HH:mm:ss z"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "EEE dd MMM yyyy HH:mm:ss z"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "EEE dd-MMM-yy HH:mm:ss z"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "EEE dd MMM yy HH:mm:ss z"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "EEE MMM d yyyy HH:mm:ss z"
aput-object v2, v0, v1
sput-object v0, Lcom/squareup/okhttp/internal/http/o;->b:[Ljava/lang/String;
new-array v0, v3, [Ljava/text/DateFormat;
sput-object v0, Lcom/squareup/okhttp/internal/http/o;->c:[Ljava/text/DateFormat;
return-void
.end method
.method public static a(Ljava/util/Date;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/squareup/okhttp/internal/http/o;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/DateFormat;
invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/util/Date;
.registers 7
:try_start_0
sget-object v0, Lcom/squareup/okhttp/internal/http/o;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/DateFormat;
invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_b
.catch Ljava/text/ParseException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v0
:goto_c
return-object v0
:catch_d
move-exception v0
sget-object v2, Lcom/squareup/okhttp/internal/http/o;->b:[Ljava/lang/String;
monitor-enter v2
const/4 v0, 0x0
:try_start_12
sget-object v1, Lcom/squareup/okhttp/internal/http/o;->b:[Ljava/lang/String;
array-length v3, v1
move v1, v0
:goto_16
if-ge v1, v3, :cond_3b
sget-object v0, Lcom/squareup/okhttp/internal/http/o;->c:[Ljava/text/DateFormat;
aget-object v0, v0, v1
if-nez v0, :cond_2d
new-instance v0, Ljava/text/SimpleDateFormat;
sget-object v4, Lcom/squareup/okhttp/internal/http/o;->b:[Ljava/lang/String;
aget-object v4, v4, v1
sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sget-object v4, Lcom/squareup/okhttp/internal/http/o;->c:[Ljava/text/DateFormat;
aput-object v0, v4, v1
:try_end_2d
.catchall {:try_start_12 .. :try_end_2d} :catchall_33
:try_start_2d
:cond_2d
invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_33
.catch Ljava/text/ParseException; {:try_start_2d .. :try_end_30} :catch_36
move-result-object v0
:try_start_31
monitor-exit v2
:try_end_32
.catchall {:try_start_31 .. :try_end_32} :catchall_33
goto :goto_c
:catchall_33
move-exception v0
monitor-exit v2
throw v0
:catch_36
move-exception v0
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_16
:cond_3b
monitor-exit v2
const/4 v0, 0x0
goto :goto_c
.end method