.class public Lorg/scribe/exceptions/OAuthSignatureException;
.super Lorg/scribe/exceptions/OAuthException;
.source "OAuthSignatureException.java"
.field private static final MSG:Ljava/lang/String; = "Error while signing string: %s"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 6
const-string v0, "Error while signing string: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method