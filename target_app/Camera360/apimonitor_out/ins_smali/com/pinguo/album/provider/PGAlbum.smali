.class public Lcom/pinguo/album/provider/PGAlbum;
.super Ljava/lang/Object;
.source "PGAlbum.java"
.field public static final AUTHORITY:Ljava/lang/String; = "pg_album"
.field public static final AUTHORITY_URI:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "content://pg_album"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/album/provider/PGAlbum;->AUTHORITY_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method