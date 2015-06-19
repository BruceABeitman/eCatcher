.class public Ld/a/a/a;
.super Ld/a/a;
.source "SourceFile"
.field private static final a:J = 0x1L
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Ld/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected b(Ljava/lang/Object;)Ld/a/d/b;
.registers 4
instance-of v0, p1, Ljava/net/HttpURLConnection;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The default consumer expects requests of type java.net.HttpURLConnection"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
new-instance v0, Ld/a/a/c;
check-cast p1, Ljava/net/HttpURLConnection;
invoke-direct {v0, p1}, Ld/a/a/c;-><init>(Ljava/net/HttpURLConnection;)V
return-object v0
.end method