.class final enum Lcom/spotify/android/paste/app/FontSupport$ViewFactory$5;
.super Lcom/spotify/android/paste/app/FontSupport$ViewFactory;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x4
const/4 v1, 0x0
invoke-direct {p0, p1, v0, p2, v1}, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;-><init>(Ljava/lang/String;ILjava/lang/String;B)V
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/TextView;
.registers 4
new-instance v0, Landroid/widget/CheckedTextView;
invoke-direct {v0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public final b()I
.registers 2
sget v0, Lcom/spotify/android/paste/b;->k:I
return v0
.end method