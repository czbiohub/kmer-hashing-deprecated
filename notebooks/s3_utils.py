import s3fs

def write_s3(df, filename, fmt='csv', **kwargs):
    fs = s3fs.S3FileSystem(anon=False)
    if fmt == 'csv':
        # csv is a text format
        with fs.open(filename, 'w') as f:
            return df.to_csv(f, **kwargs)
    elif fmt == 'parquet':
        # Parquet is a binary format and needs the "b" flag
        with fs.open(filename, 'wb') as f:
            return df.to_parquet(f, **kwargs)
        