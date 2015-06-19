.class final Lcom/squareup/picasso/g;
.super Lcom/squareup/picasso/d;
.source "SourceFile"


# static fields
.field private static final p:Landroid/content/UriMatcher;


# instance fields
.field final o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "display_photo/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/d;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V

    iput-object p1, p0, Lcom/squareup/picasso/g;->o:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p2}, Lcom/squareup/picasso/g;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/g;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/squareup/picasso/g;->d()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_13
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_25

    invoke-static {v2}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    iget v2, p2, Lcom/squareup/picasso/ab;->f:I

    iget v3, p2, Lcom/squareup/picasso/ab;->g:I

    invoke-static {v2, v3, v1}, Lcom/squareup/picasso/g;->a(IILandroid/graphics/BitmapFactory$Options;)V

    :cond_20
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :catchall_25
    move-exception v0

    invoke-static {v2}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method private d()Ljava/io/InputStream;
    .registers 5

    iget-object v0, p0, Lcom/squareup/picasso/g;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;

    iget-object v0, v0, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    sget-object v2, Lcom/squareup/picasso/g;->p:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_46

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_28
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    :goto_2f
    return-object v0

    :cond_30
    :pswitch_30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3b

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2f

    :cond_3b
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2f

    :pswitch_41
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2f

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_28
        :pswitch_41
        :pswitch_30
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/squareup/picasso/g;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/squareup/picasso/g;->a(Ljava/io/InputStream;Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result-object v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    return-object v0

    :catchall_d
    move-exception v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method final a()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
