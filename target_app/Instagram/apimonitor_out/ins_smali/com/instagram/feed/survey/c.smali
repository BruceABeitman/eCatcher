.class public final Lcom/instagram/feed/survey/c;
.super Ljava/lang/Object;
.source "Survey.java"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/instagram/feed/survey/c;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/instagram/feed/survey/c;->a:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/survey/c;->a:Ljava/lang/String;
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/survey/c;->b:Ljava/lang/String;
return-void
.end method