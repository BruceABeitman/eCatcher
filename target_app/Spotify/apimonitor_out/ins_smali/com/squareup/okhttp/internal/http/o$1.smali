.class final Lcom/squareup/okhttp/internal/http/o$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected final synthetic initialValue()Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
const-string v1, "GMT"
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
return-object v0
.end method