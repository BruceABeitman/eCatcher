.class public Loauth/signpost/basic/DefaultOAuthConsumer;
.super Loauth/signpost/AbstractOAuthConsumer;
.source "DefaultOAuthConsumer.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Loauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
.registers 4
instance-of v0, p1, Ljava/net/HttpURLConnection;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The default consumer expects requests of type java.net.HttpURLConnection"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
new-instance v0, Loauth/signpost/basic/HttpURLConnectionRequestAdapter;
check-cast p1, Ljava/net/HttpURLConnection;
invoke-direct {v0, p1}, Loauth/signpost/basic/HttpURLConnectionRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V
return-object v0
.end method