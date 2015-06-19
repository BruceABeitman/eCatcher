.class final Lcom/instagram/common/analytics/t;
.super Ljava/lang/Object;
.source "ExtraBundle.java"
.implements Lcom/instagram/common/analytics/q;
.field private final a:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/analytics/t;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/t;-><init>(Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/t;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/t;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/t;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/t;->a:Ljava/lang/String;
return-object v0
.end method