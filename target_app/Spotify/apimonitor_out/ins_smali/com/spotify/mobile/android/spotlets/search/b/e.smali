.class public final Lcom/spotify/mobile/android/spotlets/search/b/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Map;
.field private final b:Landroid/text/style/StyleSpan;
.field private final c:Ljava/util/Locale;
.field private final d:Lcom/spotify/mobile/android/spotlets/search/b/a;
.field private e:Z
.field private f:Ljava/lang/String;
.method public constructor <init>(Landroid/text/style/StyleSpan;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->a:Ljava/util/Map;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->f:Ljava/lang/String;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/style/StyleSpan;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->b:Landroid/text/style/StyleSpan;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->c:Ljava/util/Locale;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->c:Ljava/util/Locale;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b/a;-><init>(Ljava/util/Locale;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->d:Lcom/spotify/mobile/android/spotlets/search/b/a;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_2a
const-string v0, ""
:goto_8
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->f:Ljava/lang/String;
invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_29
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->a:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->clear()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->d:Lcom/spotify/mobile/android/spotlets/search/b/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b/a;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_37
const/4 v0, 0x1
:goto_27
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->e:Z
:cond_29
return-void
:cond_2a
sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;
invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->c:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_37
const/4 v0, 0x0
goto :goto_27
.end method
.method public final b(Ljava/lang/String;)Ljava/lang/CharSequence;
.registers 8
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/SpannableString;
if-nez v0, :cond_57
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Landroid/text/SpannableString;
sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;
invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->e:Z
if-eqz v0, :cond_51
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->d:Lcom/spotify/mobile/android/spotlets/search/b/a;
invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/search/b/a;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_33
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->b:Landroid/text/style/StyleSpan;
invoke-static {v3}, Landroid/text/style/StyleSpan;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
move-result-object v3
const/4 v4, 0x0
aget v4, v0, v4
const/4 v5, 0x1
aget v0, v0, v5
const/16 v5, 0x21
invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
goto :goto_33
:cond_51
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/e;->a:Ljava/util/Map;
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v0, v1
:cond_57
return-object v0
.end method