.class public final Lcom/squareup/okhttp/internal/http/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/util/Set;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Ljava/util/LinkedHashSet;
const/16 v1, 0x8
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "OPTIONS"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "GET"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "HEAD"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "POST"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "PUT"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "DELETE"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "TRACE"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, "PATCH"
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/squareup/okhttp/internal/http/q;->a:Ljava/util/Set;
return-void
.end method
.method public static a(Ljava/lang/String;)Z
.registers 2
const-string v0, "POST"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "PATCH"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "PUT"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "DELETE"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public static b(Ljava/lang/String;)Z
.registers 2
const-string v0, "POST"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "PUT"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "PATCH"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "DELETE"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method