.class public abstract Lcom/spotify/mobile/android/util/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/EnumSet;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;
return-void
.end method
.method public constructor <init>(Ljava/util/EnumSet;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;
return-void
.end method
.method public final a()Ljava/util/EnumSet;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/k;->a:Ljava/util/EnumSet;
return-object v0
.end method
.method public abstract a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
.end method