.class public abstract Lcom/instagram/cliffjumper/edit/common/ui/c;
.super Ljava/lang/Object;
.source "EffectInfo.java"
.field private a:Ljava/lang/String;
.field private b:I
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->a:Ljava/lang/String;
iput p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->b:I
return-void
.end method
.method public abstract d()Lcom/instagram/cliffjumper/edit/common/ui/a;
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/c;->b:I
return v0
.end method