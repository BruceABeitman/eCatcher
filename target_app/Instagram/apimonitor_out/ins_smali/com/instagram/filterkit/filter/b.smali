.class final Lcom/instagram/filterkit/filter/b;
.super Ljava/lang/Object;
.source "IgFilterGroup.java"
.field final a:Lcom/instagram/filterkit/filter/IgFilter;
.field  b:Z
.field final synthetic c:Lcom/instagram/filterkit/filter/IgFilterGroup;
.method public constructor <init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V
.registers 4
iput-object p1, p0, Lcom/instagram/filterkit/filter/b;->c:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/b;->b:Z
return-void
.end method