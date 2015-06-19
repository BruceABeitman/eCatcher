.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "CjFilterInfo.java"
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.field private c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
.method public constructor <init>(Ljava/lang/String;ILcom/instagram/cliffjumper/edit/common/ui/a;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V
.registers 6
invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V
iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
iput-object p3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;
return-void
.end method
.method public static c()Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 1
new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;-><init>()V
return-object v0
.end method
.method public final a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
return-object v0
.end method
.method public final b()Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->c:Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
return-object v0
.end method
.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;
return-object v0
.end method