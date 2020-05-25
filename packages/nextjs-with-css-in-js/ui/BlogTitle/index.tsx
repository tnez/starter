import * as React from 'react'

import * as styles from './index.treat'

export function BlogTitle({ title }: { title: string }): React.ReactElement {
  return <h2 className={styles.BlogTitle}>{title}</h2>
}
