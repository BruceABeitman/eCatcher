.class public final Lcom/instagram/creation/photo/gallery/e;
.super Lcom/instagram/creation/photo/gallery/a;
.source "Image.java"
.implements Lcom/instagram/creation/photo/gallery/c;
.field private i:I
.method public constructor <init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V
.registers 15
invoke-direct/range {p0 .. p13}, Lcom/instagram/creation/photo/gallery/a;-><init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
iput p14, p0, Lcom/instagram/creation/photo/gallery/e;->i:I
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/creation/photo/gallery/e;->i:I
return v0
.end method