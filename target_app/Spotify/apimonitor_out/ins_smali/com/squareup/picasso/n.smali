.class public final Lcom/squareup/picasso/n;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Ljava/io/InputStream;
.field final b:Landroid/graphics/Bitmap;
.field final c:Z
.field final d:J
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Stream may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/squareup/picasso/n;->a:Ljava/io/InputStream;
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/picasso/n;->b:Landroid/graphics/Bitmap;
iput-boolean p2, p0, Lcom/squareup/picasso/n;->c:Z
iput-wide p3, p0, Lcom/squareup/picasso/n;->d:J
return-void
.end method