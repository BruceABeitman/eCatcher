.class public abstract Lcom/instagram/creation/base/ui/h;
.super Ljava/lang/Object;
.source "FilterTileInfo.java"
.field private a:I
.field private b:Ljava/lang/String;
.field private c:I
.method public constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/creation/base/ui/h;->a:I
iput-object p2, p0, Lcom/instagram/creation/base/ui/h;->b:Ljava/lang/String;
iput p3, p0, Lcom/instagram/creation/base/ui/h;->c:I
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/base/ui/h;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/creation/base/ui/h;->a:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/creation/base/ui/h;->c:I
return v0
.end method