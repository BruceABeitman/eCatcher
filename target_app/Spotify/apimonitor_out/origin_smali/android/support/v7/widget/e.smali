.class final Landroid/support/v7/widget/e;
.super Landroid/support/v4/widget/m;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/support/v7/widget/SearchView;

.field private k:Landroid/app/SearchableInfo;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:I

.field private p:Landroid/content/res/ColorStateList;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method private a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_9
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_14

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    if-nez v3, :cond_1f

    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    const-string v2, "SuggestionsAdapter"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1f
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4e

    const-string v1, "SuggestionsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid icon resource "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_4e
    move-object v0, v1

    goto :goto_13
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_28

    move-result v0

    if-eqz v0, :cond_4d

    :try_start_d
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_10} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_28

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    :try_start_13
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    const-string v2, "SuggestionsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Icon not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_11

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/support/v7/widget/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_6e

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_6e} :catch_28

    :cond_6e
    const/4 v0, 0x0

    :try_start_6f
    invoke-static {v2, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_8d

    move-result-object v0

    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_76} :catch_28

    goto :goto_11

    :catch_77
    move-exception v2

    :try_start_78
    const-string v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error closing icon stream for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_8c} :catch_28

    goto :goto_11

    :catchall_8d
    move-exception v0

    :try_start_8e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_91} :catch_28

    :goto_91
    :try_start_91
    throw v0

    :catch_92
    move-exception v2

    const-string v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error closing icon stream for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_a7} :catch_28

    goto :goto_91
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move-object v0, v1

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/widget/e;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v7/widget/e;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/e;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_49} :catch_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_49} :catch_5d

    goto :goto_12

    :catch_4a
    move-exception v0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/e;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :catch_5d
    move-exception v0

    const-string v0, "SuggestionsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Icon resource not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_12
.end method

.method private static a(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    goto :goto_4

    :catch_a
    move-exception v1

    const-string v2, "SuggestionsAdapter"

    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_a

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_9
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/e;->m:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2a} :catch_46

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5c

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_46
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No package found for authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9a

    const/4 v0, 0x0

    :try_start_63
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6c} :catch_84

    move-result v0

    :goto_6d
    if-nez v0, :cond_c3

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_84
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Single path segment is not a resource ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_ae

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :cond_ae
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than two path segments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c3
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/e;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b
.end method

.method private static d(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p0, :cond_11

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_10

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 9

    const/4 v6, 0x0

    if-nez p1, :cond_17

    const-string v0, ""

    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/e;->j:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/support/v7/widget/e;->j:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1c

    :cond_15
    move-object v0, v6

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroid/support/v7/widget/e;->k:Landroid/app/SearchableInfo;

    if-nez v1, :cond_31

    move-object v0, v6

    :goto_21
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_16

    :catch_27
    move-exception v0

    const-string v1, "SuggestionsAdapter"

    const-string v2, "Search suggestions query threw an exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    move-object v0, v6

    goto :goto_16

    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_39

    move-object v0, v6

    goto :goto_21

    :cond_39
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5d
    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_86

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    :goto_6e
    const-string v0, "limit"

    const-string v1, "50"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_21

    :cond_86
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_89} :catch_27

    move-object v4, v6

    goto :goto_6e
.end method

.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/m;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/f;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/widget/e;->n:Z

    if-eqz v0, :cond_11

    const-string v0, "SuggestionsAdapter"

    const-string v1, "Tried to change cursor after adapter was closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroid/support/v4/widget/m;->a(Landroid/database/Cursor;)V

    if-eqz p1, :cond_10

    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->q:I

    const-string v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->r:I

    const-string v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->s:I

    const-string v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->t:I

    const-string v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->u:I

    const-string v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->v:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    goto :goto_10

    :catch_47
    move-exception v0

    const-string v1, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/f;

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/e;->v:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_150

    iget v0, p0, Landroid/support/v7/widget/e;->v:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v7, v0

    :goto_14
    iget-object v0, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    iget v0, p0, Landroid/support/v7/widget/e;->q:I

    invoke-static {p3, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/e;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    iget-object v0, v6, Landroid/support/v7/widget/f;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_88

    iget v0, p0, Landroid/support/v7/widget/e;->s:I

    invoke-static {p3, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ce

    iget-object v0, p0, Landroid/support/v7/widget/e;->p:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_52

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/c;->m:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/e;->p:Landroid/content/res/ColorStateList;

    :cond_52
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/e;->p:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v8

    :goto_6d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_83

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_83
    :goto_83
    iget-object v1, v6, Landroid/support/v7/widget/f;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/e;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_88
    iget-object v0, v6, Landroid/support/v7/widget/f;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_98

    iget-object v2, v6, Landroid/support/v7/widget/f;->c:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/widget/e;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e6

    const/4 v0, 0x0

    :cond_94
    :goto_94
    const/4 v1, 0x4

    invoke-static {v2, v0, v1}, Landroid/support/v7/widget/e;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_98
    iget-object v0, v6, Landroid/support/v7/widget/f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_a9

    iget-object v1, v6, Landroid/support/v7/widget/f;->d:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/widget/e;->u:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13b

    const/4 v0, 0x0

    :goto_a4
    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Landroid/support/v7/widget/e;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_a9
    iget v0, p0, Landroid/support/v7/widget/e;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b7

    iget v0, p0, Landroid/support/v7/widget/e;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_147

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_147

    :cond_b7
    iget-object v0, v6, Landroid/support/v7/widget/f;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Landroid/support/v7/widget/f;->e:Landroid/widget/ImageView;

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v6, Landroid/support/v7/widget/f;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_cd
    return-void

    :cond_ce
    iget v0, p0, Landroid/support/v7/widget/e;->r:I

    invoke-static {p3, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    :cond_d5
    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_83

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v6, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_83

    :cond_e6
    iget v0, p0, Landroid/support/v7/widget/e;->t:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_94

    iget-object v0, p0, Landroid/support/v7/widget/e;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Landroid/support/v7/widget/e;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    iget-object v0, p0, Landroid/support/v7/widget/e;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_11d

    const/4 v0, 0x0

    :goto_10f
    if-nez v0, :cond_94

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_94

    :cond_11d
    iget-object v1, p0, Landroid/support/v7/widget/e;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10f

    :cond_128
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_136

    const/4 v0, 0x0

    :goto_12f
    iget-object v4, p0, Landroid/support/v7/widget/e;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_10f

    :cond_136
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_12f

    :cond_13b
    iget v0, p0, Landroid/support/v7/widget/e;->u:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_a4

    :cond_147
    iget-object v0, v6, Landroid/support/v7/widget/f;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    :cond_150
    move v7, v0

    goto/16 :goto_14
.end method

.method public final c(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_3

    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/e;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "suggest_intent_data"

    invoke-static {p1, v1}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    move-object v0, v1

    goto :goto_3

    :cond_20
    iget-object v1, p0, Landroid/support/v7/widget/e;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "suggest_text_1"

    invoke-static {p1, v1}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v2

    const-string v0, "SuggestionsAdapter"

    const-string v1, "Search suggestions cursor threw exception."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/e;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v7/widget/e;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/f;

    iget-object v0, v0, Landroid/support/v7/widget/f;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    move-object v0, v1

    goto :goto_4
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/widget/m;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/e;->d(Landroid/database/Cursor;)V

    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/widget/m;->notifyDataSetInvalidated()V

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/e;->d(Landroid/database/Cursor;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/e;->j:Landroid/support/v7/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method
